.class Lcom/android/server/location/GpsStatusListenerHelper$4;
.super Ljava/lang/Object;
.source "GpsStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GpsStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsStatusListenerHelper;->onSvStatusChanged(I[I[F[F[FIII[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;

.field final synthetic val$almanacMask:I

.field final synthetic val$azimuths:[F

.field final synthetic val$elevations:[F

.field final synthetic val$ephemerisMask:I

.field final synthetic val$gnssUsedInFixMask:[J

.field final synthetic val$prns:[I

.field final synthetic val$snrs:[F

.field final synthetic val$svCount:I

.field final synthetic val$usedInFixMask:I


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;I[I[F[F[FIII[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GpsStatusListenerHelper;
    .param p2, "val$svCount"    # I
    .param p3, "val$prns"    # [I
    .param p4, "val$snrs"    # [F
    .param p5, "val$elevations"    # [F
    .param p6, "val$azimuths"    # [F
    .param p7, "val$ephemerisMask"    # I
    .param p8, "val$almanacMask"    # I
    .param p9, "val$usedInFixMask"    # I
    .param p10, "val$gnssUsedInFixMask"    # [J

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    iput p2, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$svCount:I

    iput-object p3, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$prns:[I

    iput-object p4, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$snrs:[F

    iput-object p5, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$elevations:[F

    iput-object p6, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$azimuths:[F

    iput p7, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$ephemerisMask:I

    iput p8, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$almanacMask:I

    iput p9, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$usedInFixMask:I

    iput-object p10, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$gnssUsedInFixMask:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsStatusListener;)V
    .locals 10
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget v1, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$svCount:I

    .line 90
    iget-object v2, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$prns:[I

    .line 91
    iget-object v3, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$snrs:[F

    .line 92
    iget-object v4, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$elevations:[F

    .line 93
    iget-object v5, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$azimuths:[F

    .line 94
    iget v6, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$ephemerisMask:I

    .line 95
    iget v7, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$almanacMask:I

    .line 96
    iget v8, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$usedInFixMask:I

    .line 97
    iget-object v9, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$gnssUsedInFixMask:[J

    move-object v0, p1

    .line 88
    invoke-interface/range {v0 .. v9}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII[J)V

    .line 87
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "listener"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    check-cast p1, Landroid/location/IGpsStatusListener;

    .end local p1    # "listener":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$4;->execute(Landroid/location/IGpsStatusListener;)V

    return-void
.end method
