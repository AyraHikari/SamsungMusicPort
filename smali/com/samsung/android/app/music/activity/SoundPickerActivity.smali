.class public final Lcom/samsung/android/app/music/activity/SoundPickerActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 9
    const-class v0, Lcom/samsung/android/app/music/activity/SoundPickerSearchActivity;

    return-object v0
.end method

.method protected f()Z
    .locals 4

    const/4 v0, 0x0

    .line 14
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/util/ComponentDisabler;->a(Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->d(Landroid/content/Context;)V

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->c(Landroid/content/Context;)V

    :cond_0
    const-string v1, "com.sec.android.mmapp"

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/util/ComponentDisabler;->b(Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/util/ComponentDisabler;->d(Landroid/content/Context;)V

    const-string v1, "com.samsung.android.app.soundpicker"

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "intent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/SoundPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/SoundPickerActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
