.class Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder$1;->b:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder$1;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder$1;->b:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;Landroid/view/View;I)V

    return-void
.end method
