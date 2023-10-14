public class YellowMarker extends Marker {
    private String markerText = 'Defaulted';

    public YellowMarker() {
        markerText = 'Nothing was set';
    }

    public YellowMarker(String newText) {
        if(!String.isEmpty(newText)) markerText = newText;
    }

    public override void write() {
        System.debug(markerText);
    } 
}