sub init()
    'setting the image size based on the Roku device UI resolution
    resolutionName = LCase(createObject("roDeviceInfo").getUIResolution().name)
    backgroundImage = m.top.findNode("backgroundImage")
    backgroundImage.uri = backgroundImage.uri.replace("{size}", resolutionName)
end sub