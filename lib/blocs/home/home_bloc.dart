import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, BaseState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<GetUserInfoEvent>((event, emit) {

    });
    on<SetIndexImageSliderEvent>((event, emit) => setIndexImageSlider(event, emit));
  }
  int activeIndex = 0;
  final urlImages = [
    'https://scontent.fhan14-1.fna.fbcdn.net/v/t39.30808-6/279361109_113551401337581_9018869904497589529_n.jpg?_nc_cat=101&ccb=1-6&_nc_sid=730e14&_nc_ohc=mxFPtRgAsmkAX9S0ID0&_nc_ht=scontent.fhan14-1.fna&oh=00_AT9GQXA81wg7Dh7skLWEHSQc2eC4COofv0WNgxVsWLYoUQ&oe=62879AB8',
    'https://scontent.fhan14-2.fna.fbcdn.net/v/t39.30808-6/278772078_113551348004253_3061407522575408199_n.jpg?_nc_cat=109&ccb=1-6&_nc_sid=730e14&_nc_ohc=QxGHRwGreTAAX90EtBI&_nc_ht=scontent.fhan14-2.fna&oh=00_AT-UJxXFx-xGDE_EQq3RtDvmwxWj7aQ_8yG-EVRQY-QlbA&oe=62868E71',
    'https://scontent.fhan14-1.fna.fbcdn.net/v/t39.30808-6/278844714_113551438004244_419694839771410811_n.jpg?_nc_cat=110&ccb=1-6&_nc_sid=730e14&_nc_ohc=1nUYseTgdAEAX8pH952&_nc_ht=scontent.fhan14-1.fna&oh=00_AT-F88dRrk8peE5c7V3ZG9Ain9v6I_L_sL2-nk-RkyaYyQ&oe=628777FB',
    'https://scontent.fhan14-1.fna.fbcdn.net/v/t39.30808-6/279415809_113551098004278_3040645246229217452_n.jpg?_nc_cat=104&ccb=1-6&_nc_sid=730e14&_nc_ohc=uIyWScg_xl0AX8bK-o2&_nc_ht=scontent.fhan14-1.fna&oh=00_AT8fA3UQ7Tm86RVYJb3pGUXEcRX4wPhi6QCpWCT37AZchA&oe=6286AFEC',
    'https://scontent.fhan14-1.fna.fbcdn.net/v/t39.30808-6/279439432_113551114670943_1050494279694860702_n.jpg?_nc_cat=104&ccb=1-6&_nc_sid=730e14&_nc_ohc=hAbodvHfmX8AX8esiBZ&_nc_ht=scontent.fhan14-1.fna&oh=00_AT_DiDQ8ULCeqVvihVTLq8H36WuYZv1BOwMl3IYjyCyFnQ&oe=6286AD04',
    'https://scontent.fhan14-1.fna.fbcdn.net/v/t39.30808-6/279493654_113551038004284_7261439155624046917_n.jpg?_nc_cat=110&ccb=1-6&_nc_sid=730e14&_nc_ohc=woLYoi3Vn-gAX9Lcw6I&_nc_ht=scontent.fhan14-1.fna&oh=00_AT-0miylVVQV7TcLukrOIxxfr1lkSSehjpv9OSPDYx2SEw&oe=62873BDB'
  ];

  setIndexImageSlider(SetIndexImageSliderEvent event, Emitter<BaseState> emit) async {
    activeIndex = event.index;
    emit(SetIndexImageSliderSate());
  }
}
