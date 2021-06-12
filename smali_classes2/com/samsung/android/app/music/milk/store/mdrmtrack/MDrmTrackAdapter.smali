.class public final Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;,
        Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;,
        Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
        "Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;->a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 23
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f04017c

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 26
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
