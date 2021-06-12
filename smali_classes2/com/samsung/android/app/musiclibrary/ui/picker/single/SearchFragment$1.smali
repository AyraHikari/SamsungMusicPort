.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 5

    .line 92
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 p3, -0x1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->d(Landroid/database/Cursor;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    move-object p1, v2

    move-object v0, p1

    const/4 p2, -0x1

    goto :goto_0

    :pswitch_0
    const p1, 0x110001

    .line 119
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->c(I)J

    move-result-wide p3

    const-string p2, "6055"

    move-object v0, p2

    move-object p1, v2

    const p2, 0x110001

    goto :goto_0

    :pswitch_1
    const p2, 0x100002

    const-string v0, "_id"

    .line 113
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "album"

    .line 114
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "6054"

    goto :goto_0

    :pswitch_2
    const p2, 0x100003

    const-string v0, "_id"

    .line 107
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "artist"

    .line 108
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "6053"

    :goto_0
    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->getScreenId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "key_list_type"

    .line 130
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "key_keyword"

    .line 131
    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "key_title"

    .line 132
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_audio_id"

    .line 133
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 135
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 136
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 137
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
