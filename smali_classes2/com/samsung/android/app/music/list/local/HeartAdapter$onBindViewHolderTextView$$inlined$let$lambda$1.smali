.class public final Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/HeartAdapter;->b(Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/ViewTreeObserver;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/samsung/android/app/music/list/local/HeartAdapter;

.field final synthetic e:I

.field final synthetic f:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Landroid/widget/TextView;Lcom/samsung/android/app/music/list/local/HeartAdapter;ILkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->b:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->d:Lcom/samsung/android/app/music/list/local/HeartAdapter;

    iput p5, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->e:I

    iput-object p6, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->f:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p7, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->h:Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->b:Landroid/view/ViewTreeObserver;

    const-string v1, "vto"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->b:Landroid/view/ViewTreeObserver;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->a:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/TextViewExtensionKt;->a(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->h:Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartAdapter$ViewHolder;->d()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 140
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 141
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 142
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartAdapter$onBindViewHolderTextView$$inlined$let$lambda$1;->c:Landroid/widget/TextView;

    const-string v5, "text"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    :cond_2
    :goto_1
    return v2
.end method
