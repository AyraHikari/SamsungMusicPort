.class Lcom/samsung/android/app/music/search/SearchDetailFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/SearchDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/SearchDetailFragment;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$2;->a:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 3

    .line 224
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$2;->a:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    .line 225
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-UiList"

    .line 227
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

    .line 231
    :cond_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/database/Cursor;)I

    move-result p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    move-object p1, p3

    goto :goto_0

    .line 252
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$2;->a:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a(Lcom/samsung/android/app/music/search/SearchDetailFragment;I)V

    .line 253
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$2;->a:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->b(Lcom/samsung/android/app/music/search/SearchDetailFragment;I)V

    .line 254
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$2;->a:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "SCPY"

    const-string p3, "Samsung Music"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "1304"

    const-string p1, "Local"

    move-object v2, p3

    move-object p3, p1

    move-object p1, v2

    goto :goto_0

    :pswitch_1
    const-string p1, "_id"

    .line 245
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    const-string p4, "album"

    .line 246
    invoke-interface {v0, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {v0, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$2;->a:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    const v1, 0x100002

    .line 248
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-static {v0, v1, p1, p4}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "1303"

    goto :goto_0

    :pswitch_2
    const-string p1, "_id"

    .line 237
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "artist"

    .line 239
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 240
    iget-object p4, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$2;->a:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    const v0, 0x100003

    invoke-static {p4, v0, p1, p2}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "1302"

    .line 262
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$2;->a:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->m()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 265
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    iget-object p4, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$2;->a:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    .line 266
    invoke-virtual {p4}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 268
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$2;->a:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    .line 269
    invoke-virtual {p3}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
