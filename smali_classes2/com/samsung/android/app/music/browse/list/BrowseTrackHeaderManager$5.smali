.class Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$5;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 319
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$5;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->d(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;->a()V

    return-void
.end method
