.class public final enum Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gradient_color_extractor/GradientMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GradientInterpolationFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

.field public static final enum Bezier:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

.field public static final enum Circ:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

.field public static final enum Cubic:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

.field public static final enum Expo:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

.field public static final enum Linear:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

.field public static final enum Quad:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

.field public static final enum Qunit:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

.field public static final enum Sine:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 36
    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    const-string v1, "Linear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Linear:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    const-string v1, "Sine"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Sine:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    const-string v1, "Cubic"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Cubic:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    const-string v1, "Bezier"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Bezier:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    const-string v1, "Quad"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Quad:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    const-string v1, "Circ"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Circ:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    const-string v1, "Expo"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Expo:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    const-string v1, "Qunit"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Qunit:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    const/16 v0, 0x8

    .line 35
    new-array v0, v0, [Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Linear:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Sine:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Cubic:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Bezier:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Quad:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Circ:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Expo:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->Qunit:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    aput-object v1, v0, v9

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->$VALUES:[Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;
    .locals 1

    .line 35
    const-class v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;
    .locals 1

    .line 35
    sget-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->$VALUES:[Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    invoke-virtual {v0}, [Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientInterpolationFunction;

    return-object v0
.end method
