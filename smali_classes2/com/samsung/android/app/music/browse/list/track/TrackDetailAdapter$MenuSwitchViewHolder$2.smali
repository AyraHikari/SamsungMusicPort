.class Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder$2;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailAdapter$MenuSwitchViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 234
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
