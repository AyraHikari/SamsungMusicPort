.class public final Lcom/samsung/android/app/music/milk/share/FDLShortenUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/share/FDLShortenUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl;->a:Lcom/samsung/android/app/music/milk/share/FDLShortenUrl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/share/OnShortenResult;)V
    .locals 1

    const-string v0, "long"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->a()Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->b()Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    move-result-object v0

    .line 15
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->a(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    const-string p1, "https://samsungmusic.page.link"

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->a(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    .line 17
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl$shorten$2;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl$shorten$2;-><init>(Lcom/samsung/android/app/music/milk/share/OnShortenResult;)V

    check-cast v0, Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->a(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 22
    new-instance v0, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl$shorten$3;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl$shorten$3;-><init>(Lcom/samsung/android/app/music/milk/share/OnShortenResult;)V

    check-cast v0, Lcom/google/android/gms/tasks/OnFailureListener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->a(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
