.class public final Lcom/sec/android/app/music/common/activity/MusicMainActivity;
.super Lcom/samsung/android/app/music/main/v;
.source "MusicMainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/activity/MusicMainActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/sec/android/app/music/common/activity/MusicMainActivity$Companion;

.field private static final VERIFICATION_LOG_TAG:Ljava/lang/String; = "VerificationLog"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/music/common/activity/MusicMainActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/activity/MusicMainActivity$Companion;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/sec/android/app/music/common/activity/MusicMainActivity;->Companion:Lcom/sec/android/app/music/common/activity/MusicMainActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/music/main/v;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "VerificationLog"

    const-string v1, "onCreate"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/v;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 4
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

    .line 5
    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/ui/feature/h;->R:Z

    if-eqz p1, :cond_0

    const-string p1, "MUSICPLAYER_OPENED"

    .line 9
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/regional/usa/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/v;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/h;->R:Z

    if-eqz v0, :cond_0

    const-string v0, "EXIT_MUSICPLAYER"

    .line 2
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/regional/usa/a;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/main/v;->onDestroy()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/v;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    const-string v0, "VerificationLog"

    const-string v1, "onResume"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/samsung/android/app/music/main/v;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/music/main/v;->onStart()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "VerificationLog"

    const-string v1, "Executed"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/main/v;->onWindowFocusChanged(Z)V

    return-void
.end method
