.class public final Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/favorite/AddResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateFlag"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag$Def;
    }
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DUPLICATED:I = 0x1

.field public static final INSTANCE:Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;

.field public static final LOCAL_MAX:I = 0x2

.field public static final SERVER_MAX:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 176
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->INSTANCE:Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addFlag(II)I
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag$Def;
        .end annotation
    .end param

    or-int/2addr p0, p1

    return p0
.end method

.method public static final hasFlag(II)Z
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag$Def;
        .end annotation
    .end param

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final removeFlag(II)I
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag$Def;
        .end annotation
    .end param

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method
