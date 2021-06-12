.class Lcom/samsung/android/app/music/list/local/SearchFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 3

    .line 594
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    .line 595
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-UiList"

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid item selected id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " position "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 601
    :cond_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/database/Cursor;)I

    move-result p1

    .line 602
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getItemViewType(I)I

    move-result p3

    const/16 p4, -0xc8

    const/4 v1, 0x0

    if-ne p3, p4, :cond_1

    .line 604
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    .line 605
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    .line 606
    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    .line 607
    invoke-virtual {p4}, Lcom/samsung/android/app/music/list/local/SearchFragment;->v_()Ljava/lang/String;

    move-result-object p4

    .line 608
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 607
    invoke-static {p4, p1}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchDetailFragment;

    move-result-object p1

    .line 605
    invoke-static {p2, p3, p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    move-object p1, v1

    goto :goto_0

    .line 632
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->a(Lcom/samsung/android/app/music/list/local/SearchFragment;I)V

    .line 633
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->b(Lcom/samsung/android/app/music/list/local/SearchFragment;I)V

    .line 634
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "SCPY"

    const-string p3, "Samsung Music"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1304"

    const-string p1, "Local"

    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    goto :goto_0

    :pswitch_1
    const-string p1, "_id"

    .line 625
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    const-string p3, "album"

    .line 626
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 627
    iget-object p4, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {p4}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p4

    const v0, 0x100002

    .line 628
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 627
    invoke-static {p4, v0, p1, p3}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "1303"

    goto :goto_0

    :pswitch_2
    const-string p1, "_id"

    .line 617
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "artist"

    .line 619
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 620
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p3

    const p4, 0x100003

    invoke-static {p3, p4, p1, p2}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "1302"

    .line 642
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->d(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    .line 645
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    .line 646
    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getScreenId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 648
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    .line 649
    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getScreenId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
