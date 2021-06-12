.class final Lcom/samsung/android/app/music/list/favorite/ServerResultState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/favorite/ServerResultState$Def;
    }
.end annotation


# static fields
.field public static final FAILED:I = 0x1

.field public static final INSTANCE:Lcom/samsung/android/app/music/list/favorite/ServerResultState;

.field public static final MAX:I = 0x2

.field public static final SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1565
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/ServerResultState;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/favorite/ServerResultState;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/favorite/ServerResultState;->INSTANCE:Lcom/samsung/android/app/music/list/favorite/ServerResultState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
