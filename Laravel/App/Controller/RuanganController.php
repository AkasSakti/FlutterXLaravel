   use App\Models\Ruangan;
   use Illuminate\Http\Request;

   class RuanganController extends Controller
   {
       public function index()
       {
           return Ruangan::all();
       }

       public function store(Request $request)
       {
           $ruangan = Ruangan::create($request->all());
           return response()->json($ruangan, 201);
       }

       public function show($id)
       {
           return Ruangan::find($id);
       }

       public function update(Request $request, $id)
       {
           $ruangan = Ruangan::findOrFail($id);
           $ruangan->update($request->all());
           return response()->json($ruangan, 200);
       }

       public function destroy($id)
       {
           Ruangan::destroy($id);
           return response()->json(null, 204);
       }
   }
