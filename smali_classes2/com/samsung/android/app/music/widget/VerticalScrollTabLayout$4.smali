.class Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->setAdapter(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 238
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-static {p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    .line 240
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f04005c

    const/4 v1, 0x0

    .line 241
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 244
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4$1;-><init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    new-instance p1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method a(Landroid/widget/TextView;I)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;->a(I)Ljava/lang/String;

    move-result-object p2

    .line 261
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 256
    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;->a()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;->a()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 234
    check-cast p1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;->a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;->a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;

    move-result-object p1

    return-object p1
.end method
