.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;
.super Landroid/database/ContentObserver;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

.field final synthetic val$enabledPrintServicesUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$enabledPrintServicesUri"    # Landroid/net/Uri;

    .prologue
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iput-object p3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->val$enabledPrintServicesUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->val$enabledPrintServicesUri:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    const/4 v3, -0x1

    if-eq p3, v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v3, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)Lcom/android/server/print/UserState;

    move-result-object v2

    .local v2, "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v2}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "userState":Lcom/android/server/print/UserState;
    :cond_0
    monitor-exit v4

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "userCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/UserState;

    .restart local v2    # "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v2}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "userCount":I
    .end local v2    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
