.class public Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;
.super Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;
    .locals 3

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;-><init>()V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_title"

    .line 35
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_message"

    .line 36
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_label"

    .line 37
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_distribued_by"

    .line 38
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "AlbumDetailPopup"

    const-string p1, "showDialog : manager is null"

    .line 46
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "AlbumDetailPopup"

    .line 50
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;

    if-eqz v0, :cond_1

    const-string p0, "AlbumDetailPopup"

    const-string p1, "showDialog : Already showing"

    .line 52
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;

    move-result-object p1

    const-string p2, "AlbumDetailPopup"

    .line 57
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)I
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100581

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method protected a(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6

    .line 72
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->a(Landroid/app/Dialog;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "key_label"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->a:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "key_distribued_by"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->b:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "key_message"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->c:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f040148

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f1303d1

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f1303d3

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1303d5

    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const p2, 0x7f1303d2

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const p2, 0x7f1303d4

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f1303d6

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0497

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    const/4 v4, 0x1

    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-eqz p2, :cond_4

    const/4 p2, -0x1

    if-eqz v4, :cond_3

    .line 119
    invoke-virtual {p0, p1, p2, p2}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->a(Landroid/view/View;II)V

    goto :goto_3

    :cond_3
    const/4 v0, -0x2

    .line 122
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->a(Landroid/view/View;II)V

    :cond_4
    :goto_3
    return-void
.end method

.method protected b(Landroid/content/Context;)I
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10085c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 130
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->onResume()V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AlbumDetailPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "discover_album_detail"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
