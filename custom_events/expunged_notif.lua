local NotificationTitle = 'Anticheat.dll'
local NotificationDesc = 'Potential threat detected: expunged.dat'
local script2 = [[ powershell -Command "& {$ErrorActionPreference = 'Stop';$notificationTitle = ]] ..  [[']] .. NotificationDesc .. [[']] .. [[;[Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] > $null;$template = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType]::ToastText01);$toastXml = [xml] $template.GetXml();$toastXml.GetElementsByTagName('text').AppendChild($toastXml.CreateTextNode($notificationTitle)) > $null;$xml = New-Object Windows.Data.Xml.Dom.XmlDocument;$xml.LoadXml($toastXml.OuterXml);$toast = [Windows.UI.Notifications.ToastNotification]::new($xml);$toast.Tag = 'Test1';$toast.Group = 'Test2';$toast.ExpirationTime = [DateTimeOffset]::Now.AddSeconds(5);$notifier = [Windows.UI.Notifications.ToastNotificationManager]:]].. [[:CreateToastNotifier(']] .. NotificationTitle  .. [[');]].. [[$notifier.Show($toast);}"]]

function onEvent(name, value1, value2)
    if name == 'expunged_notif' then
        os.execute(script2)
    end
end