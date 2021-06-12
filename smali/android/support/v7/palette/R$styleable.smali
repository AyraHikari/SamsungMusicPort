.class public final Landroid/support/v7/palette/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/palette/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ColorStateListItem:[I

.field public static final ColorStateListItem_alpha:I = 0x2

.field public static final ColorStateListItem_android_alpha:I = 0x1

.field public static final ColorStateListItem_android_color:I = 0x0

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x4

.field public static final FontFamilyFont_fontStyle:I = 0x3

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x3

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x4

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x5

.field public static final FontFamily_fontProviderPackage:I = 0x1

.field public static final FontFamily_fontProviderQuery:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 138
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/palette/R$styleable;->ColorStateListItem:[I

    const/4 v0, 0x6

    .line 142
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/support/v7/palette/R$styleable;->FontFamily:[I

    .line 149
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/support/v7/palette/R$styleable;->FontFamilyFont:[I

    return-void

    :array_0
    .array-data 4
        0x10101a5
        0x101031f
        0x7f01013c
    .end array-data

    :array_1
    .array-data 4
        0x7f010182
        0x7f010183
        0x7f010184
        0x7f010185
        0x7f010186
        0x7f010187
    .end array-data

    :array_2
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f010188
        0x7f010189
        0x7f01018a
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
