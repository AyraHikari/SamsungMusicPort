.class final enum Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Corners"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

.field public static final enum LB:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

.field public static final enum LT:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

.field public static final enum RB:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

.field public static final enum RT:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    const-string v2, "LT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->LT:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    const-string v2, "RT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->RT:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    const-string v2, "RB"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->RB:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    const-string v2, "LB"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->LB:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;
    .locals 1

    const-class v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    invoke-virtual {v0}, [Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    return-object v0
.end method
