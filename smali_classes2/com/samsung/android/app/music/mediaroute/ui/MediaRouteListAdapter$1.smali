.class Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$1;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$1;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;I)Landroid/database/Cursor;

    move-result-object p1

    .line 48
    sget p2, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->a:I

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "default_id"

    .line 49
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 50
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->changeToDefaultPlayer()V

    goto :goto_0

    :cond_0
    const/16 p3, 0x66

    .line 52
    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 54
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$1;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;

    invoke-static {p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;)Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$IDialogController;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$1;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;

    invoke-static {p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;)Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$IDialogController;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteChooserDialogFragment$IDialogController;->a()V

    .line 57
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter$1;->a:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onItemClick - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p4, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumnsIndex;->b:I

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;->a(Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteListAdapter;Ljava/lang/String;)V

    return-void
.end method
