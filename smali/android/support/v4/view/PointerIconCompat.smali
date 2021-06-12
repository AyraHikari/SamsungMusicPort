.class public final Landroid/support/v4/view/PointerIconCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_ALIAS:I = 0x3f2

.field public static final TYPE_ALL_SCROLL:I = 0x3f5

.field public static final TYPE_ARROW:I = 0x3e8

.field public static final TYPE_CELL:I = 0x3ee

.field public static final TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final TYPE_COPY:I = 0x3f3

.field public static final TYPE_CROSSHAIR:I = 0x3ef

.field public static final TYPE_DEFAULT:I = 0x3e8

.field public static final TYPE_GRAB:I = 0x3fc

.field public static final TYPE_GRABBING:I = 0x3fd

.field public static final TYPE_HAND:I = 0x3ea

.field public static final TYPE_HELP:I = 0x3eb

.field public static final TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final TYPE_NO_DROP:I = 0x3f4

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_TEXT:I = 0x3f0

.field public static final TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final TYPE_WAIT:I = 0x3ec

.field public static final TYPE_ZOOM_IN:I = 0x3fa

.field public static final TYPE_ZOOM_OUT:I = 0x3fb


# instance fields
.field private mPointerIcon:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroid/support/v4/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Landroid/support/v4/view/PointerIconCompat;
    .locals 2

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 150
    new-instance v0, Landroid/support/v4/view/PointerIconCompat;

    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 152
    :cond_0
    new-instance p0, Landroid/support/v4/view/PointerIconCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;
    .locals 2

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 129
    new-instance v0, Landroid/support/v4/view/PointerIconCompat;

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 131
    :cond_0
    new-instance p0, Landroid/support/v4/view/PointerIconCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static load(Landroid/content/res/Resources;I)Landroid/support/v4/view/PointerIconCompat;
    .locals 2

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 179
    new-instance v0, Landroid/support/v4/view/PointerIconCompat;

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 181
    :cond_0
    new-instance p0, Landroid/support/v4/view/PointerIconCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public getPointerIcon()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/support/v4/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    return-object v0
.end method
