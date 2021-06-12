.class final Lcom/samsung/android/app/music/background/Trajectory$Companion$Empty$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/Trajectory$Companion$Empty$2;->invoke()Lcom/samsung/android/app/music/background/Trajectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Lcom/samsung/android/app/music/background/FrameState;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/background/Trajectory$Companion$Empty$2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/background/Trajectory$Companion$Empty$2$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/background/Trajectory$Companion$Empty$2$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/background/Trajectory$Companion$Empty$2$1;->INSTANCE:Lcom/samsung/android/app/music/background/Trajectory$Companion$Empty$2$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(F)Lcom/samsung/android/app/music/background/FrameState;
    .locals 2

    .line 150
    new-instance p1, Lcom/samsung/android/app/music/background/FrameState;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const/16 v1, 0xff

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/background/FrameState;-><init>(Landroid/graphics/PointF;I)V

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/background/Trajectory$Companion$Empty$2$1;->invoke(F)Lcom/samsung/android/app/music/background/FrameState;

    move-result-object p1

    return-object p1
.end method
