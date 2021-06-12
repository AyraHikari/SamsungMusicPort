.class public final Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

.field private static instance:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->$$INSTANCE:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    if-nez v0, :cond_0

    .line 127
    const-class v0, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    sput-object p1, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    .line 129
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    return-object p1
.end method
