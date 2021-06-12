.class Lcom/samsung/android/app/music/help/HelpActivity$HelpAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/help/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/help/HelpActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/help/HelpActivity;Landroid/content/Context;I)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/music/help/HelpActivity$HelpAdapter;->a:Lcom/samsung/android/app/music/help/HelpActivity;

    .line 125
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
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

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/help/HelpActivity$HelpAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f040126

    .line 133
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/help/HelpActivity$HelpAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;

    const v1, 0x7f130070

    .line 138
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const p1, 0x7f130179

    .line 140
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 141
    invoke-virtual {p3}, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/help/HelpActivity$HelpAdapter;->a:Lcom/samsung/android/app/music/help/HelpActivity;

    const/4 p3, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100fb

    aput v2, v1, v0

    const v2, 0x1010074

    .line 145
    invoke-virtual {p1, p3, v1, v2, v0}, Lcom/samsung/android/app/music/help/HelpActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 148
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-object p2
.end method
