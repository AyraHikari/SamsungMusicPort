.class public final enum Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gradient_color_extractor/GradientMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GradientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

.field public static final enum Linear:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

.field public static final enum None:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

.field public static final enum Radial:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

.field public static final enum RadialQuarter:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;->None:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    const-string v1, "Linear"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;->Linear:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    const-string v1, "Radial"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;->Radial:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    const-string v1, "RadialQuarter"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;->RadialQuarter:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    const/4 v0, 0x4

    .line 39
    new-array v0, v0, [Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;->None:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;->Linear:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;->Radial:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;->RadialQuarter:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;->$VALUES:[Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;
    .locals 1

    .line 39
    const-class v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;
    .locals 1

    .line 39
    sget-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;->$VALUES:[Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    invoke-virtual {v0}, [Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientType;

    return-object v0
.end method
