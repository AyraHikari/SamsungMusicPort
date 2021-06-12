.class final Lcom/samsung/android/app/music/list/ListFavoriteableImpl$refresh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$refresh$1;->a:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl$refresh$1;->a:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->a(Lcom/samsung/android/app/music/list/ListFavoriteableImpl;Ljava/lang/Boolean;)V

    return-void
.end method
