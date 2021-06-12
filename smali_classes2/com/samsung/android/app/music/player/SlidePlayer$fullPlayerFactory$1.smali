.class public final Lcom/samsung/android/app/music/player/SlidePlayer$fullPlayerFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/FullPlayerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SlidePlayer;-><init>(Landroid/support/v7/app/AppCompatActivity;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/SlidePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$fullPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;
    .locals 6

    .line 157
    sget-object v0, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$fullPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer$fullPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SlidePlayer;->e(Lcom/samsung/android/app/music/player/SlidePlayer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Lcom/samsung/android/app/music/player/SlidePlayer;Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$fullPlayerFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->i(Lcom/samsung/android/app/music/player/SlidePlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 161
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->m()Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "LayoutInflater.from(activity)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->m()Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "activity.findViewById(Fu\u2026ayerViScene.CONTAINER_ID)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    .line 160
    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    return-object v0

    .line 158
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.music.activity.BaseServiceActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
