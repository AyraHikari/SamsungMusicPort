.class public final enum Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

.field public static final enum End:Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

.field public static final enum None:Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

.field public static final enum Started:Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 150
    new-instance v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;->None:Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    const-string v1, "Started"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;->Started:Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    const-string v1, "End"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;->End:Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    sget-object v1, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;->None:Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;->Started:Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;->End:Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;->$VALUES:[Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;
    .locals 1

    .line 150
    const-class v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;
    .locals 1

    .line 150
    sget-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;->$VALUES:[Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    invoke-virtual {v0}, [Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gradient_color_extractor/CallGradient_V2$GradientView$AnimationState;

    return-object v0
.end method
