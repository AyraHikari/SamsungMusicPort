.class public final Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/favorite/FavoriteApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

.field private static instance:Lcom/samsung/android/app/music/list/favorite/FavoriteApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->$$INSTANCE:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->instance:Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    if-nez v0, :cond_0

    .line 54
    const-class v0, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    sput-object p1, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->instance:Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    .line 56
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->instance:Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    const-string p1, "instance - isNull"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 57
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->logE$default(Ljava/lang/String;IILjava/lang/Object;)V

    .line 56
    move-object p1, v2

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    :goto_0
    return-object p1
.end method
