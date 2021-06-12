.class public final Lcom/samsung/android/app/music/list/favorite/FavoriteType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/favorite/FavoriteType$Def;
    }
.end annotation


# static fields
.field public static final ALBUM:Ljava/lang/String; = "2"

.field public static final ARTIST:Ljava/lang/String; = "3"

.field public static final INSTANCE:Lcom/samsung/android/app/music/list/favorite/FavoriteType;

.field public static final PICK:Ljava/lang/String; = "4"

.field public static final PLAYLIST:Ljava/lang/String; = "5"

.field public static final TRACK:Ljava/lang/String; = "1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 221
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteType;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteType;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteType;->INSTANCE:Lcom/samsung/android/app/music/list/favorite/FavoriteType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
