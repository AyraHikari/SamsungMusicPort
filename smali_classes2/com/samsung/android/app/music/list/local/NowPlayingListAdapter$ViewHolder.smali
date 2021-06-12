.class public final Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    return-void
.end method
