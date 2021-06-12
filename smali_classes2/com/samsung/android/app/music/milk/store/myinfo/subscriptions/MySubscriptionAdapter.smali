.class public Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-void
.end method

.method private a(Landroid/database/Cursor;)I
    .locals 4

    const-string v0, "01"

    const-string v1, "paymentMethodCode"

    .line 72
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f020536

    return p1

    :cond_0
    const-string v0, "1"

    const-string v1, "streamingCode"

    .line 77
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "downloadMaxCount"

    .line 79
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "1"

    const-string v3, "drmProduct"

    .line 82
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f020537

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const p1, 0x7f02053a

    return p1

    :cond_3
    const p1, 0x7f020539

    if-eqz v0, :cond_4

    return p1

    :cond_4
    if-eqz v1, :cond_5

    const p1, 0x7f020538

    return p1

    :cond_5
    const-string v0, "MySubscriptionAdapter"

    const-string v1, "getIconResource unexpect icon "

    .line 93
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private b(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;I)V
    .locals 4

    .line 52
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 55
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;->textView1:Landroid/widget/TextView;

    const-string v1, "productTitle"

    .line 56
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;->a:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;->a(Landroid/database/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;->context:Landroid/content/Context;

    const-string v1, "startDateLocal"

    .line 63
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/model/purchase/Subscription;->changeDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 64
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;->textView2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0b03c3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;->textView2:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;
    .locals 2
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    .line 37
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0401a0

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 40
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;I)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;->b(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;I)V

    return-void
.end method

.method protected synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionAdapter$MySubscriptionViewHolder;

    move-result-object p1

    return-object p1
.end method
