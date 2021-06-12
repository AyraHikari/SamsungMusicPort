.class final Lcom/samsung/android/app/music/player/SlidePlayer$backPressObservable$2;
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
        "Lcom/samsung/android/app/musiclibrary/BackPressedObservable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/SlidePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$backPressObservable$2;->this$0:Lcom/samsung/android/app/music/player/SlidePlayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/BackPressedObservable;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$backPressObservable$2;->this$0:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->e(Lcom/samsung/android/app/music/player/SlidePlayer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.BackPressedObservable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SlidePlayer$backPressObservable$2;->invoke()Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    move-result-object v0

    return-object v0
.end method
