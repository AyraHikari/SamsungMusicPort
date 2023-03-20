.class public final Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;
.super Ljava/lang/Object;
.source "ListAnalyticsImpl.kt"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;,
        Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

.field public final c:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$a;

.field public final d:I

.field public final e:Lkotlin/jvm/functions/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/q<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 2
    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;-><init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->b:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

    .line 3
    new-instance v0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$a;-><init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->c:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$a;

    .line 4
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/x;->q()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->d:I

    .line 5
    new-instance p1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$b;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$b;-><init>(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->e:Lkotlin/jvm/functions/q;

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->c:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$a;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->b:Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl$FireBase;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->d:I

    return p0
.end method


# virtual methods
.method public a()Lkotlin/jvm/functions/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/q<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;->e:Lkotlin/jvm/functions/q;

    return-object v0
.end method

.method public b()Lkotlin/jvm/functions/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/q<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/u;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$f$a;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$f;)Lkotlin/jvm/functions/q;

    move-result-object v0

    return-object v0
.end method
