.class final synthetic Lcom/google/firebase/dynamiclinks/internal/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field static final a:Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/zzf;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/firebase/dynamiclinks/internal/zzf;->a:Lcom/google/firebase/components/ComponentFactory;

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
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/zzg;

    const-class v1, Lcom/google/firebase/FirebaseApp;

    .line 3
    invoke-interface {p1, v1}, Lcom/google/firebase/components/ComponentContainer;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    const-class v2, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    invoke-interface {p1, v2}, Lcom/google/firebase/components/ComponentContainer;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/dynamiclinks/internal/zzg;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/analytics/connector/AnalyticsConnector;)V

    return-object v0
.end method
