.class public Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;

.field private final c:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

.field private d:I

.field private final e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->d:I

    .line 29
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->e:Landroid/view/View$OnClickListener;

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->c:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->a([Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->d:I

    .line 29
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->e:Landroid/view/View$OnClickListener;

    .line 79
    sget-object v0, Lcom/samsung/android/app/musiclibrary/R$styleable;->StateButton:[I

    .line 80
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 84
    sget p3, Lcom/samsung/android/app/musiclibrary/R$styleable;->StateButton_state_ids:I

    const/4 p4, 0x0

    .line 85
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p3

    .line 87
    array-length v0, p3

    .line 88
    sget v1, Lcom/samsung/android/app/musiclibrary/R$styleable;->StateButton_state_descriptions:I

    new-array v2, v0, [I

    .line 89
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->a(Landroid/content/res/Resources;Landroid/content/res/TypedArray;I[I)[I

    move-result-object v1

    .line 91
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->StateButton_state_backgrounds:I

    new-array v3, v0, [I

    .line 92
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->a(Landroid/content/res/Resources;Landroid/content/res/TypedArray;I[I)[I

    move-result-object v2

    .line 94
    sget v3, Lcom/samsung/android/app/musiclibrary/R$styleable;->StateButton_state_values:I

    new-array v4, v0, [I

    .line 95
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->a(Landroid/content/res/Resources;Landroid/content/res/TypedArray;I[I)[I

    move-result-object p1

    .line 98
    new-array v3, v0, [Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->c:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    :goto_0
    if-ge p4, v0, :cond_0

    .line 100
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->c:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    aget v5, p3, p4

    aget v6, v2, p4

    aget v7, v1, p4

    aget v8, p1, p4

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;-><init>(IIII)V

    aput-object v4, v3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->c:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->a([Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V

    .line 103
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->d:I

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setStateInternal(I)V

    return-void
.end method

.method private a([Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 162
    array-length p1, p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->e:Landroid/view/View$OnClickListener;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setStateInternal(I)V

    return-void

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "- it should have the state at least one."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/content/res/Resources;I[I)[I
    .locals 1

    const/4 v0, 0x0

    .line 141
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->a(Landroid/content/res/TypedArray;[I)[I

    move-result-object p2
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw p2

    :catch_0
    move-object p1, v0

    :catch_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-object p3
.end method

.method private a(Landroid/content/res/Resources;Landroid/content/res/TypedArray;I[I)[I
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 135
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->a(Landroid/content/res/Resources;I[I)[I

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/res/TypedArray;[I)[I
    .locals 4

    .line 154
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 156
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->c:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->a:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private setStateInternal(I)V
    .locals 2

    if-ltz p1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->c:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 186
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->d:I

    if-eq p1, v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->c:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V

    .line 188
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->d:I

    .line 190
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->c:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->d:I

    aget-object v0, v0, v1

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->c:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    aget-object p1, v1, p1

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;->onStateChanged(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V

    :cond_1
    return-void

    .line 184
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "currStateIdx is wrong value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V
    .locals 2

    .line 199
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->c:I

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->c:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->b:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setImageResource(I)V

    return-void
.end method

.method public getState()Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->c:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->d:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 119
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 121
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setStateInternal(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 113
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->d:I

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;

    return-void
.end method

.method public setState(I)V
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->c:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    add-int/lit8 v4, v4, 0x1

    .line 173
    iget v5, v5, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->a:I

    if-ne v5, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v4, v2, :cond_2

    .line 178
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setStateInternal(I)V

    :cond_2
    return-void
.end method
