<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc">
  <NamedLayer>
    <Name>polygon</Name>
    <UserStyle>
      <Title>Polygon Style</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>Polygon</Name>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">rgba(0,0,255,0.2)</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">blue</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>