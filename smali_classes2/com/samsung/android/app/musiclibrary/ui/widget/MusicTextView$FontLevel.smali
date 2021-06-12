.class final enum Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FontLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

.field public static final enum EXTRA_HUGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

.field public static final enum EXTRA_LARGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

.field public static final enum EXTRA_SMALL:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

.field public static final enum HUGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

.field public static final enum LARGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

.field public static final enum MEDIUM:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

.field public static final enum SMALL:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

.field public static final enum TINY:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;


# instance fields
.field private final fontScale:F

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    const-string v3, "TINY"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x3f4ccccd    # 0.8f

    .line 138
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;-><init>(Ljava/lang/String;IIF)V

    sput-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->TINY:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    aput-object v2, v1, v4

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    const-string v3, "EXTRA_SMALL"

    const/4 v4, 0x2

    const v6, 0x3f666666    # 0.9f

    .line 139
    invoke-direct {v2, v3, v5, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;-><init>(Ljava/lang/String;IIF)V

    sput-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->EXTRA_SMALL:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    aput-object v2, v1, v5

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    const-string v3, "SMALL"

    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    .line 140
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;-><init>(Ljava/lang/String;IIF)V

    sput-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->SMALL:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    aput-object v2, v1, v4

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    const-string v3, "MEDIUM"

    const/4 v4, 0x4

    const v6, 0x3f8ccccd    # 1.1f

    .line 141
    invoke-direct {v2, v3, v5, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;-><init>(Ljava/lang/String;IIF)V

    sput-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->MEDIUM:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    aput-object v2, v1, v5

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    const-string v3, "LARGE"

    const/4 v5, 0x5

    const v6, 0x3fa66666    # 1.3f

    .line 142
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;-><init>(Ljava/lang/String;IIF)V

    sput-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->LARGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    aput-object v2, v1, v4

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    const-string v3, "EXTRA_LARGE"

    const/4 v4, 0x6

    const/high16 v6, 0x3fc00000    # 1.5f

    .line 143
    invoke-direct {v2, v3, v5, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;-><init>(Ljava/lang/String;IIF)V

    sput-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->EXTRA_LARGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    aput-object v2, v1, v5

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    const-string v3, "HUGE"

    const/4 v5, 0x7

    const v6, 0x3fd9999a    # 1.7f

    .line 144
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;-><init>(Ljava/lang/String;IIF)V

    sput-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->HUGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    aput-object v2, v1, v4

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    const-string v3, "EXTRA_HUGE"

    const/high16 v4, 0x40000000    # 2.0f

    .line 145
    invoke-direct {v2, v3, v5, v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;-><init>(Ljava/lang/String;IIF)V

    sput-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->EXTRA_HUGE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    aput-object v2, v1, v5

    sput-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->$VALUES:[Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->value:I

    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->fontScale:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;
    .locals 1

    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->$VALUES:[Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    invoke-virtual {v0}, [Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;

    return-object v0
.end method


# virtual methods
.method public final getFontScale()F
    .locals 1

    .line 137
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->fontScale:F

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView$FontLevel;->value:I

    return v0
.end method
