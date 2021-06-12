.class public final Lcom/sec/android/app/music/common/activity/MusicMainActivity;
.super Lcom/samsung/android/app/music/main/MainActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/activity/MusicMainActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/sec/android/app/music/common/activity/MusicMainActivity$Companion;

.field public static final MAIN_ACTIVITY_NAME:Ljava/lang/String; = "MAIN_ACTIVITY_NAME"

.field private static final VERIFICATION_LOG_TAG:Ljava/lang/String; = "VerificationLog"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/music/common/activity/MusicMainActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/activity/MusicMainActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sec/android/app/music/common/activity/MusicMainActivity;->Companion:Lcom/sec/android/app/music/common/activity/MusicMainActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "VerificationLog"

    const-string v1, "onCreate"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/activity/MusicMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "VerificationLog"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " easy_mode_switch :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "easy_mode_switch"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " easy_mode_music :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "easy_mode_music"

    .line 31
    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->q_:Z

    if-nez p1, :cond_0

    const-string p1, "VerificationLog"

    const-string v0, "c slide"

    .line 38
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance p1, Lkr/co/cashslide/Cashslide;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "g40e5484"

    invoke-direct {p1, v0, v1}, Lkr/co/cashslide/Cashslide;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkr/co/cashslide/Cashslide;->appFirstLaunched()V

    .line 42
    :cond_0
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->B_:Z

    if-eqz p1, :cond_1

    const-string p1, "MUSICPLAYER_OPENED"

    .line 43
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/regional/usa/GateMessageUtils;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 58
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->B_:Z

    if-eqz v0, :cond_0

    const-string v0, "EXIT_MUSICPLAYER"

    .line 59
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/regional/usa/GateMessageUtils;->a(Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/main/MainActivity;->onDestroy()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/MainActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "VerificationLog"

    const-string v1, "onResume"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0}, Lcom/samsung/android/app/music/main/MainActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/samsung/android/app/music/main/MainActivity;->onStart()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "VerificationLog"

    const-string v1, "Executed"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/MainActivity;->onWindowFocusChanged(Z)V

    return-void
.end method
