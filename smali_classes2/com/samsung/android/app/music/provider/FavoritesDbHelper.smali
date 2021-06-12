.class public final Lcom/samsung/android/app/music/provider/FavoritesDbHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->a:Lcom/samsung/android/app/music/provider/FavoritesDbHelper$Companion;

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    .line 16
    sget-boolean v0, Lcom/samsung/android/app/music/provider/FavoritesDbHelper;->b:Z

    return v0
.end method
