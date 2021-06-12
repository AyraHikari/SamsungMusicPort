.class final Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$3;->b:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$3;->d:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1030
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$3;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$3;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$3;->d:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
