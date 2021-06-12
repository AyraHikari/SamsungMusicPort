.class final Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$startEqualizerAnimation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $position:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$startEqualizerAnimation$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$startEqualizerAnimation$1;->$position:Ljava/lang/Integer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$startEqualizerAnimation$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$startEqualizerAnimation$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$startEqualizerAnimation$1;->$position:Ljava/lang/Integer;

    const-string v2, "position"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->notifyItemChanged(I)V

    return-void
.end method
