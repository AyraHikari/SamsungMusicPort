.class final Lcom/samsung/android/app/music/player/SlidePlayer$sceneRoot$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SlidePlayer;-><init>(Landroid/support/v7/app/AppCompatActivity;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/SlidePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$sceneRoot$2;->this$0:Lcom/samsung/android/app/music/player/SlidePlayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/ViewGroup;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$sceneRoot$2;->this$0:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->e(Lcom/samsung/android/app/music/player/SlidePlayer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SlidePlayer$sceneRoot$2;->invoke()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
