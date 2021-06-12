.class Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingReorderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)V
    .locals 1

    .line 404
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 392
    iput v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->b:I

    .line 405
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;
    .locals 3

    .line 453
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f04005b

    const/4 v1, 0x0

    .line 454
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 455
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 456
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x101030e

    const/4 v2, 0x1

    .line 457
    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 458
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 459
    new-instance p2, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(I)V
    .locals 1

    .line 474
    iget v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->b:I

    if-ne v0, p1, :cond_0

    return-void

    .line 477
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->b:I

    .line 478
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;I)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->b(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    .line 411
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$1;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 422
    iget v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->b:I

    goto :goto_0

    :cond_0
    const v0, 0x7f100607

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 425
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 426
    iget-object v1, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->b:Landroid/widget/TextView;

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 427
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->c:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$2;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 437
    iget-boolean v0, p2, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 438
    iget-object p2, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 439
    iget-object p2, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->a:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 440
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 444
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 445
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 446
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->a:Landroid/widget/CheckBox;

    iget-boolean p2, p2, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->d:Z

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 447
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->b(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->b(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    iget v0, v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->a:I

    const v1, 0x10030

    if-ne v0, v1, :cond_0

    const/16 p1, -0x3ea

    goto :goto_0

    .line 465
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 388
    check-cast p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->a(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;

    move-result-object p1

    return-object p1
.end method
