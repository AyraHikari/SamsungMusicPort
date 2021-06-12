.class public abstract Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;


# instance fields
.field protected final a:Landroid/net/Uri;

.field private final b:[Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;->a:Landroid/net/Uri;

    .line 27
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;->b:[Ljava/lang/String;

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "^"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".*"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 38
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;->b:[Ljava/lang/String;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 39
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;->c:Ljava/lang/String;

    return-object v0
.end method
