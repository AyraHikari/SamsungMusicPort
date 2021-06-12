.class final synthetic Lcom/google/firebase/analytics/connector/internal/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field static final a:Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/analytics/connector/internal/zzb;

    invoke-direct {v0}, Lcom/google/firebase/analytics/connector/internal/zzb;-><init>()V

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->a:Lcom/google/firebase/components/ComponentFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 3

    .line 2
    const-class v0, Lcom/google/firebase/FirebaseApp;

    .line 3
    invoke-interface {p1, v0}, Lcom/google/firebase/components/ComponentContainer;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/FirebaseApp;

    const-class v1, Landroid/content/Context;

    .line 4
    invoke-interface {p1, v1}, Lcom/google/firebase/components/ComponentContainer;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/google/firebase/events/Subscriber;

    .line 5
    invoke-interface {p1, v2}, Lcom/google/firebase/components/ComponentContainer;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/events/Subscriber;

    .line 6
    invoke-static {v0, v1, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->a(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;Lcom/google/firebase/events/Subscriber;)Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    move-result-object p1

    return-object p1
.end method
