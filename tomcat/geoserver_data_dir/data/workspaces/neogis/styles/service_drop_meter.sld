<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0" 
    xmlns="http://www.opengis.net/sld" 
    xmlns:ogc="http://www.opengis.net/ogc" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
    <NamedLayer>
        <Name>LineLayer</Name>
        <UserStyle>
            <Title>Blue Line with Circle at End</Title>
            <FeatureTypeStyle>
                <!-- Rule for the blue line -->
                <Rule>
                    <Name>Service Drop</Name>
                    <LineSymbolizer>
                        <Geometry>
                            <ogc:PropertyName>geom</ogc:PropertyName>
                        </Geometry>
                        <Stroke>
                            <CssParameter name="stroke">#8571e5</CssParameter> <!-- Blue color -->
                            <CssParameter name="stroke-width">2</CssParameter> <!-- Line width -->
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
                <!-- Rule for the circle at the end of the line -->
                <Rule>
                    <Name>Meter</Name>
                    <PointSymbolizer>
                        <Geometry>
                            <ogc:Function name="endPoint">
                                <ogc:PropertyName>geom</ogc:PropertyName>
                            </ogc:Function>
                        </Geometry>
                        <Graphic>
                            <Mark>
                                <WellKnownName>circle</WellKnownName>
                                <Fill>
                                    <CssParameter name="fill">#0000FF</CssParameter> <!-- Blue fill -->
                                </Fill>
                                <Stroke>
                                    <CssParameter name="stroke">#000000</CssParameter> <!-- Black outline -->
                                    <CssParameter name="stroke-width">1</CssParameter>
                                </Stroke>
                            </Mark>
                            <Size>6</Size> <!-- Size of the circle -->
                        </Graphic>
                    </PointSymbolizer>
                </Rule>
            </FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>
</StyledLayerDescriptor>