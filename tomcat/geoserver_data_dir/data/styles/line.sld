<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc">
  <NamedLayer>
    <Name>line</Name>
    <UserStyle>
      <Title>Line Style</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>33000V Line</Name>
          <Filter>
            <Or>
              <PropertyIsEqualTo>
                <PropertyName>line_voltage</PropertyName>
                <Literal>33000</Literal>
              </PropertyIsEqualTo>
              <PropertyIsEqualTo>
                <PropertyName>line_voltage</PropertyName>
                <Literal>33000</Literal>
              </PropertyIsEqualTo>
            </Or>
          </Filter>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">rgba(46, 1, 1, 0.89)</CssParameter>
              <CssParameter name="stroke-width">4</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <Name>11000V Line</Name>
          <Filter>
            <Or>
              <PropertyIsEqualTo>
                <PropertyName>line_voltage</PropertyName>
                <Literal>11000</Literal>
              </PropertyIsEqualTo>
              <PropertyIsEqualTo>
                <PropertyName>line_voltage</PropertyName>
                <Literal>11000</Literal>
              </PropertyIsEqualTo>
            </Or>
          </Filter>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">rgba(73, 3, 3, 1)</CssParameter>
              <CssParameter name="stroke-width">3</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <Name>400V Line</Name>
          <Filter>
            <Or>
              <PropertyIsEqualTo>
                <PropertyName>line_voltage</PropertyName>
                <Literal>400</Literal>
              </PropertyIsEqualTo>
              <PropertyIsEqualTo>
                <PropertyName>line_voltage</PropertyName>
                <Literal>400</Literal>
              </PropertyIsEqualTo>
            </Or>
          </Filter>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#cb2f0ced</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
        <Rule>
          <Name>Default Line</Name>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#808080</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>