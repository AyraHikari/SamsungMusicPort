.class final Lcom/samsung/android/app/music/list/local/SpotifyManager$queryArgs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/list/local/SpotifyManager$queryArgs$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/list/local/SpotifyManager$queryArgs$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$queryArgs$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/local/SpotifyManager$queryArgs$2;->INSTANCE:Lcom/samsung/android/app/music/list/local/SpotifyManager$queryArgs$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 1163
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;->a:Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;->a()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$queryArgs$2;->invoke()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v0

    return-object v0
.end method
