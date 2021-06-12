.class Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/help/NoticeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoticeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/samsung/android/app/music/model/basic/NoticeModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f040126

    .line 118
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/basic/NoticeModel;

    if-nez p1, :cond_1

    .line 123
    invoke-static {}, Lcom/samsung/android/app/music/help/NoticeListActivity;->a()Ljava/lang/String;

    move-result-object p1

    const-string p3, "item is null"

    invoke-static {p1, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    const p3, 0x7f130070

    .line 127
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/NoticeModel;->getNoticeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/NoticeModel;->getNoticeStartDate()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 131
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/NoticeModel;->getNoticeStartDate()Ljava/lang/String;

    move-result-object p1

    const-string p3, "-"

    const-string v1, "/"

    invoke-virtual {p1, p3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f130179

    .line 133
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 134
    aget-object p1, p1, v0

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-object p2
.end method
