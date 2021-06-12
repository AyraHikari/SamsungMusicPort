.class public final Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 404
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$Companion;Landroid/app/Activity;JLandroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 408
    check-cast p4, Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity$Companion;->a(Landroid/app/Activity;JLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;JLandroid/os/Bundle;)V
    .locals 3

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-string p1, "SetAs-SetAsActivity"

    .line 410
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startActivity() audioId is "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 413
    :cond_0
    new-instance v0, Landroid/content/Intent;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/music/player/setas/control/SetAsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_audio_id"

    .line 414
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p4, :cond_1

    .line 415
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 413
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
