.class public abstract Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;
    .locals 3

    const-class v0, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->d()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    const-class v2, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    invoke-virtual {v1, v2}, Lcom/google/firebase/FirebaseApp;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract b()Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
.end method
