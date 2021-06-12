.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AttributeContainer"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:I

.field public e:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public f:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final synthetic g:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1154
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->g:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1109
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->a:Z

    .line 1116
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->b:Z

    .line 1122
    sget v0, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_default_exo_texture_video_view:I

    iput v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->c:I

    .line 1129
    sget v0, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_default_native_texture_video_view:I

    iput v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->d:I

    if-nez p3, :cond_0

    return-void

    .line 1159
    :cond_0
    sget-object v0, Lcom/devbrackets/android/exomedia/R$styleable;->VideoView:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 1164
    :cond_1
    sget p3, Lcom/devbrackets/android/exomedia/R$styleable;->VideoView_useDefaultControls:I

    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->a:Z

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->a:Z

    .line 1165
    sget p3, Lcom/devbrackets/android/exomedia/R$styleable;->VideoView_useTextureViewBacking:I

    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->b:Z

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->b:Z

    .line 1167
    sget p3, Lcom/devbrackets/android/exomedia/R$styleable;->VideoView_videoScale:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1168
    sget p3, Lcom/devbrackets/android/exomedia/R$styleable;->VideoView_videoScale:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-static {p3}, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->fromOrdinal(I)Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    move-result-object p3

    iput-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->e:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 1171
    :cond_2
    sget p3, Lcom/devbrackets/android/exomedia/R$styleable;->VideoView_measureBasedOnAspectRatio:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1172
    sget p3, Lcom/devbrackets/android/exomedia/R$styleable;->VideoView_measureBasedOnAspectRatio:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->f:Ljava/lang/Boolean;

    .line 1176
    :cond_3
    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->b:Z

    if-eqz p1, :cond_4

    sget p1, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_default_exo_texture_video_view:I

    goto :goto_0

    :cond_4
    sget p1, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_default_exo_surface_video_view:I

    :goto_0
    iput p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->c:I

    .line 1177
    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->b:Z

    if-eqz p1, :cond_5

    sget p1, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_default_native_texture_video_view:I

    goto :goto_1

    :cond_5
    sget p1, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_default_native_surface_video_view:I

    :goto_1
    iput p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->d:I

    .line 1179
    sget p1, Lcom/devbrackets/android/exomedia/R$styleable;->VideoView_videoViewApiImpl:I

    iget p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->c:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->c:I

    .line 1180
    sget p1, Lcom/devbrackets/android/exomedia/R$styleable;->VideoView_videoViewApiImplLegacy:I

    iget p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->d:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->d:I

    .line 1182
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
