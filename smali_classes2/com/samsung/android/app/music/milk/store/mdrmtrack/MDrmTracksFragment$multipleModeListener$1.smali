.class final Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$multipleModeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$multipleModeListener$1;->a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 0

    const-string p1, "MDrmTracksFragment"

    const-string p2, "multipleModeListener"

    .line 56
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$multipleModeListener$1;->a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method
