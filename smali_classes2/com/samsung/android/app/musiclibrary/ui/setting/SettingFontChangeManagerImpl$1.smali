.class Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;->a:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.settings.FONT_SIZE_CHANGED"

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Settings"

    const-string p2, "got Intent : ACTION_FONT_SIZE_CHANGED"

    .line 71
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;->a:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->b(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;)Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;->a:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$1;->a:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    .line 73
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;Landroid/content/ContentResolver;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl$OnLargerFontChangeObservers;->a(I)V

    :cond_0
    return-void
.end method
